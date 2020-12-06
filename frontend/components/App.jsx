import React from "react";
import PostsContainer from './posts/posts_container'
import PostFormContainer from './post_form/post_form_container'
import Home from "./home/home"
import { Route, Switch} from 'react-router-dom'
import LegislatorFormContainer from "./home/legislator_form_container"
import ConstituentFormContainer from "./home/constituent_form_container"
// import { Route, Switch} from 'react-router-dom'
// import LoginFormContainer from './session_form/login_form_container'
// import SignupFormContainer from './session_form/signup_form_container'
// import { AuthRoute, ProtectedRoute } from '../util/route_util'
// import DashboardContainer from './dashboard/dashboard_container'
// import TextFomContainer from './post_forms/text_form_container'

const App = () => (
    <div className="cheese">
        <Switch>
            <Route exact path="/legislator" component={LegislatorFormContainer} />
            <Route exact path="/constituent" component={ConstituentFormContainer} />
            <Route exact path="/home" component={Home}/>
            <Route exact path="/posts" component={PostsContainer}/>
            <Route exact path="/create-post" component={PostFormContainer}/>
            {/* <PostFormContainer exact path="/posts">
            <PostsContainer /> */}
        </Switch>
        {/* <Switch>
            <ProtectedRoute exact path='/dashboard' component={DashboardContainer} />
            <AuthRoute path="/login" component={LoginFormContainer} />
            <AuthRoute path="/signup" component={SignupFormContainer} />
            <AuthRoute path='/' component={GreetingContainer} />
        </Switch> */}
    </div>
);

export default App;