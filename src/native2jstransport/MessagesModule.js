'use strict';

export default class MessagesModule {
    sendMessage(message) {
        this.listener.onMessageFromNative(message);
    }
}