/// <reference types="node" />
import { EventEmitter } from "events";
export declare class NotificationEmitter {
    emitter?: EventEmitter;
    emit(method: string, params: unknown): void;
}
export declare const notificationEmitter: NotificationEmitter;
