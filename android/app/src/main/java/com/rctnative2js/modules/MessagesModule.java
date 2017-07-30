package com.rctnative2js.modules;

import com.facebook.react.bridge.JavaScriptModule;

public interface MessagesModule extends JavaScriptModule {
    void sendMessage(String message);
}
