package com.rctnative2js;

import android.os.Bundle;
import com.facebook.react.ReactActivity;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.bridge.ReactContext;
import com.rctnative2js.modules.MessagesModule;

public class MainActivity extends ReactActivity implements ReactInstanceManager.ReactInstanceEventListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getReactInstanceManager().addReactInstanceEventListener(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        getReactInstanceManager().removeReactInstanceEventListener(this);
    }

    @Override
    protected String getMainComponentName() {
        return "rctnative2js";
    }

    @Override
    public void onReactContextInitialized(ReactContext context) {
        MessagesModule jsModule = context.getJSModule(MessagesModule.class);

        jsModule.sendMessage("Hello from the 'Light Side' of android development");
    }

}
