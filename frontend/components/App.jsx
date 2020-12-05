import React from "react";
import PostsContainer from './posts/posts_container'
import PostFormContainer from './post_form/post_form_container'
import Home from "./home/home"
// import { Route, Switch} from 'react-router-dom'
// import LegislatorFormContainer from "./home/legislator_form_container"
// import ConstituentFormContainer from "./home/constituent_form_container"
// import { Route, Switch} from 'react-router-dom'
// import LoginFormContainer from './session_form/login_form_container'
// import SignupFormContainer from './session_form/signup_form_container'
// import { AuthRoute, ProtectedRoute } from '../util/route_util'
// import DashboardContainer from './dashboard/dashboard_container'
// import TextFomContainer from './post_forms/text_form_container'

const App = () => (
    <div className="cheese">
        {/* <Home /> */}
        {/* <Route path="/legislator" component={LegislatorFormContainer} />
        <Route path="/consituent" component={ConstituentFormContainer} /> */}
        <PostFormContainer />
        <PostsContainer />
        {/* <Switch>
            <ProtectedRoute exact path='/dashboard' component={DashboardContainer} />
            <AuthRoute path="/login" component={LoginFormContainer} />
            <AuthRoute path="/signup" component={SignupFormContainer} />
            <AuthRoute path='/' component={GreetingContainer} />
        </Switch> */}
    </div>
);

export default App;