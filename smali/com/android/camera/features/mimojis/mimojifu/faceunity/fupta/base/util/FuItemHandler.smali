.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;
.super Landroid/os/Handler;
.source "FuItemHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mFUItemHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3
    sput-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->mFUItemHandlerThread:Landroid/os/HandlerThread;

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
