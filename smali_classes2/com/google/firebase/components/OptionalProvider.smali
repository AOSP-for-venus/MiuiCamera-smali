.class public Lcom/google/firebase/components/OptionalProvider;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;
.implements Lcom/google/firebase/inject/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "TT;>;",
        "Lcom/google/firebase/inject/Deferred<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOOP_HANDLER:Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile delegate:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field public handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;->lambdaFactory$()Lcom/google/firebase/inject/Deferred$DeferredHandler;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/OptionalProvider;->NOOP_HANDLER:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 2
    invoke-static {}, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->lambdaFactory$()Lcom/google/firebase/inject/Provider;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "TT;>;",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public static empty()Lcom/google/firebase/components/OptionalProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/components/OptionalProvider<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/OptionalProvider;

    sget-object v1, Lcom/google/firebase/components/OptionalProvider;->NOOP_HANDLER:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    sget-object v2, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/OptionalProvider;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-object v0
.end method

.method public static synthetic lambda$static$0(Lcom/google/firebase/inject/Provider;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$static$1()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$whenAvailable$2(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method public static of(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/components/OptionalProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)",
            "Lcom/google/firebase/components/OptionalProvider<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/OptionalProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/components/OptionalProvider;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    sget-object v1, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    if-ne v0, v1, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v0, p1}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "provide() can be called only once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 2
    sget-object v1, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 6
    sget-object v2, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    if-eq v1, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 8
    invoke-static {v2, p1}, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)Lcom/google/firebase/inject/Deferred$DeferredHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 9
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method