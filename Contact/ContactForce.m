function Fc =  ContactForce(ContactBody,TargetBody,penalty,approach)

Fcont = zeros(ContactBody.nx,1);
Ftarg = zeros(TargetBody.nx,1);

% current position of the "possible contact" nodes of the Contact Body
ContactPoints_X = ContactBody.q(xlocChosen(ContactBody.DofsAtNode,ContactBody.contact.nodalid,1)) + ...
                  ContactBody.u(xlocChosen(ContactBody.DofsAtNode,ContactBody.contact.nodalid,1));   ... % coords on X axis;

ContactPoints_Y =  ContactBody.q(xlocChosen(ContactBody.DofsAtNode,ContactBody.contact.nodalid,2)) + ... % coords on Y axis
                   ContactBody.u(xlocChosen(ContactBody.DofsAtNode,ContactBody.contact.nodalid,2));

ContactPoints = [ContactPoints_X ContactPoints_Y];


for ii = 1:length(ContactBody.contact.nodalid) % loop over all contact points
  
    ContactPoint = ContactPoints(ii,:);

    % Searchin the attributes of the corresponding point on the target surface 
    Outcome = FindTargetPoint(TargetBody,ContactPoint);

    % Checking the condition of the penalty approach
    if Outcome.Gap < 0 % we have meaningful outcome from the search

        % DOFs of the contact elemnet under consideration
        DOFpositions = xlocChosen(ContactBody.DofsAtNode,ContactBody.contact.nodalid(ii),1:2);

        % Now we need to find forces applied to the target body due to the interation
        % index - element under consideration
        [X,U] = GetCoorDisp(Outcome.Index,TargetBody.nloc,TargetBody.P0,TargetBody.u);
        [xi,eta] = FindIsoCoord2(X,U,Outcome.Position); % finding isoparametric coodinates of the point
        % penalty approach
        if approach == 1
          
           % calculation of the forces applied to the nodes of contact elemnet 
           Fcont(DOFpositions) = Fcont(DOFpositions) - penalty*Outcome.Gap*Outcome.Normal;   % storing contact forces
                                                                                   % we put minus here due to gap negativity                                                                         
           % calculation  & redistribution over the nodes of target element
           Ftarg_loc = penalty*Outcome.Gap*Nm_2412(xi,eta)'*Outcome.Normal;
           Ftarg(TargetBody.xloc(Outcome.Index,:)) = Ftarg(TargetBody.xloc(Outcome.Index,:)) + Ftarg_loc; % storing contact forces to target 
          
        % Nitsche approach   
        elseif approach == 2
           %ElemenNumber = min(find(any(ContactBody.nloc == ContactBody.contact.nodalid(ii), 2))); % find any (it can be several) element with iith node   
           %[X_c,U_c] = GetCoorDisp(ElemenNumber,ContactBody.nloc,ContactBody.P0,ContactBody.u);
           %[xi_c,eta_c] = FindIsoCoord2(X,U,ContactPoint'); % finding isoparametric coodinates of the point
           % dudn_c = nabla_u_2412(U_c,X_c,xi_c,eta_c)*Outcome.Normal; % Nitsche item
 
            
           
           nabla_sigma = nabla_sigma_2412(TargetBody.E,TargetBody.nu,U,X,xi,eta); 
           nabla_sigma_n = nabla_sigma*Outcome.Normal;
           nabla_sigma_n_tensor = [nabla_sigma_n(1) nabla_sigma_n(3);
                                   nabla_sigma_n(3) nabla_sigma_n(2)];
           d_lambda = nabla_sigma_n_tensor*Outcome.Normal; 


           Sigma = Sigma_2412(TargetBody.E,TargetBody.nu,U,X,xi,eta);
           lambda = (Sigma*Outcome.Normal)'*Outcome.Normal;
           
           
           Fcont(DOFpositions) = Fcont(DOFpositions) - penalty*Outcome.Gap*Outcome.Normal + lambda*Outcome.Normal + Outcome.Gap*d_lambda;   % storing contact forces, we put minus here due to gap negativity                                                                                    
           % calculation  & redistribution over the nodes of target elemen
           Ftarg_loc = penalty*Outcome.Gap*Nm_2412(xi,eta)'*Outcome.Normal  - lambda*Nm_2412(xi,eta)'*Outcome.Normal - Outcome.Gap*Nm_2412(xi,eta)'*d_lambda;
           Ftarg(TargetBody.xloc(Outcome.Index,:)) = Ftarg(TargetBody.xloc(Outcome.Index,:)) + Ftarg_loc; % storing contact forces to target 
        end      

    end   
end 

% Assemblace
Fc = [Fcont;Ftarg]; 

