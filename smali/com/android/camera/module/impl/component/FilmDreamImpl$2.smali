.class public Lcom/android/camera/module/impl/component/FilmDreamImpl$2;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl;->OnRecordFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$100(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->resumePlay()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    return-void
.end method
