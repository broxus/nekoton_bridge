import { JsonRpcRequest, JsonRpcResponse } from './jrpc';
import { ConsoleLike, Maybe, SafeEventEmitter } from './utils';
type InitializeProviderOptions = {
    logger?: ConsoleLike;
    maxEventListeners?: number;
    shouldSetOnWindow?: boolean;
};
export declare const initializeProvider: ({ logger, maxEventListeners, shouldSetOnWindow, }: InitializeProviderOptions) => NekotonInpageProvider;
export declare function setGlobalProvider(providerInstance: NekotonInpageProvider): void;
interface NekotonInpageProviderOptions {
    logger?: ConsoleLike;
    maxEventListeners?: number;
}
interface RequestArguments {
    method: string;
    params?: unknown[] | Record<string, unknown>;
}
declare class NekotonInpageProvider extends SafeEventEmitter {
    private readonly _log;
    private _state;
    constructor({ logger, maxEventListeners, }: NekotonInpageProviderOptions);
    get isConnected(): boolean;
    request<T>(args: RequestArguments): Promise<Maybe<T>>;
    sendAsync(payload: JsonRpcRequest<unknown>, callback: (error: Error | null, response?: JsonRpcResponse<unknown>) => void): void;
    addListener(eventName: string, listener: (...args: unknown[]) => void): this;
    removeListener(eventName: string, listener: (...args: unknown[]) => void): this;
    on(eventName: string, listener: (...args: unknown[]) => void): this;
    once(eventName: string, listener: (...args: unknown[]) => void): this;
    prependListener(eventName: string, listener: (...args: unknown[]) => void): this;
    prependOnceListener(eventName: string, listener: (...args: unknown[]) => void): this;
    private _rpcRequest;
}
export {};
