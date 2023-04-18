/// <reference types="node" />
import { EventEmitter } from 'events';
import { PendingJsonRpcResponse } from './jrpc';
export type Maybe<T> = Partial<T> | null | undefined;
export type ConsoleLike = Pick<Console, 'log' | 'warn' | 'error' | 'debug' | 'info' | 'trace'>;
export interface JsonRpcError {
    code: number;
    message: string;
    data?: unknown;
    stack?: string;
}
export declare class NekotonRpcError<T> extends Error {
    code: number;
    data?: T;
    constructor(code: number, message: string, data?: T);
    serialize(): JsonRpcError;
    toString(): string;
}
export declare class SafeEventEmitter extends EventEmitter {
    emit(type: string, ...args: any[]): boolean;
}
export declare const getRpcPromiseCallback: (resolve: (value?: any) => void, reject: (error?: Error) => void, unwrapResult?: boolean) => (error: Error, response: PendingJsonRpcResponse<unknown>) => void;
export declare const requestDart: (requestName: any, args?: any) => any;
