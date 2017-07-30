'use strict';

import Constants from '../utils/Constants';
import MessagesModule from './MessagesModule';
import BatchedBridge from 'BatchedBridge';

export const messagesModule = new MessagesModule();

BatchedBridge.registerCallableModule(
    Constants.MESSAGES_MODULE,
    messagesModule
);