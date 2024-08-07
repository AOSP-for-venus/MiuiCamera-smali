.class public Lcom/android/camera2/SuperNightReprocessHandler;
.super Landroid/os/Handler;
.source "SuperNightReprocessHandler.java"


# static fields
.field public static final MSG_CLEANUP:I = 0x13

.field public static final MSG_DATA:I = 0x10

.field public static final MSG_META:I = 0x11

.field public static final MSG_PREPARE:I = 0x12

.field public static final RAW_FORMAT_RAW10:I = 0x1

.field public static final RAW_FORMAT_RAW12:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SNReprocessHandler"


# instance fields
.field public final mBaseEvIndex:I

.field public mCamera2Shot:Lcom/android/camera2/MiCamera2ShotRawBurst;

.field public final mCameraDevice:Lcom/android/camera2/MiCamera2;

.field public final mCameraMode:I

.field public final mCaptureStateHandler:Landroid/os/Handler;

.field public final mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mMaxInputImageCount:I

.field public final mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

.field public final mUnprocessedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnprocessedMeta:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public superNightRawFormat:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/camera2/MiCamera2;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    .line 4
    sget-object p1, Lcom/android/camera2/MiCamera2ShotRawBurst;->EV_LIST:[I

    array-length p1, p1

    iput p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mBaseEvIndex:I

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/16 p3, 0xd0a

    .line 6
    iput p3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->superNightRawFormat:I

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x71c

    goto :goto_0

    :cond_1
    const/16 p3, 0x71b

    goto :goto_0

    :cond_2
    const/16 p3, 0xd12

    .line 8
    iput p3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->superNightRawFormat:I

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO()Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x704

    goto :goto_0

    :cond_3
    const/16 p3, 0x701

    .line 10
    :goto_0
    iput-object p2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCameraHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCaptureStateHandler:Landroid/os/Handler;

    .line 12
    new-instance p2, Lcom/arcsoft/supernight/SuperNightProcess;

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/arcsoft/supernight/SuperNightProcess;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    .line 13
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    iput p3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraMode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2ShotRawBurst;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCamera2Shot:Lcom/android/camera2/MiCamera2ShotRawBurst;

    return-object p0
.end method

.method private clearCache()V
    .locals 3

    const-string v0, "SNReprocessHandler"

    const-string v1, "clearCache: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 4
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string p0, "clearCache: X"

    .line 6
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static convert(Landroid/graphics/Rect;IILandroid/graphics/Rect;F)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v1

    if-le v0, v1, :cond_0

    sub-int v0, p1, v0

    .line 3
    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    .line 4
    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 6
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v1

    if-le v0, v1, :cond_2

    sub-int v0, p2, v0

    .line 7
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    .line 8
    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, p2

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    if-le v0, v1, :cond_4

    int-to-float v0, v1

    mul-float/2addr v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    if-ge v0, v1, :cond_5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 15
    :cond_5
    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 16
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 17
    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 18
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 19
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 20
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 21
    rem-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_6

    add-int/lit8 p2, p2, 0x1

    .line 22
    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 23
    :cond_6
    iget p1, p0, Landroid/graphics/Rect;->top:I

    rem-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_7

    add-int/lit8 p1, p1, 0x1

    .line 24
    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 25
    :cond_7
    iget p1, p0, Landroid/graphics/Rect;->right:I

    rem-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_8

    add-int/lit8 p1, p1, -0x1

    .line 26
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 27
    :cond_8
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_9

    add-int/lit8 p1, p1, -0x1

    .line 28
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 29
    :cond_9
    invoke-static {p4, p3}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private generateReprocessCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/SuperNightReprocessHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/SuperNightReprocessHandler$1;-><init>(Lcom/android/camera2/SuperNightReprocessHandler;)V

    return-object v0
.end method

.method private sendReprocessRequest()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    const-string v2, "SNReprocessHandler"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string v0, "sendReprocessRequest:<SNP>: E"

    .line 6
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    iget v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraMode:I

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    .line 11
    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/arcsoft/supernight/SuperNightProcess;->init(IIII)I

    .line 12
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iget-object v5, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    iget-object v6, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/camera2/SuperNightReprocessHandler;->superNightRawFormat:I

    move-object v9, v0

    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Lcom/arcsoft/supernight/SuperNightProcess;->addAllInputInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/media/Image;Landroid/graphics/Rect;)I

    .line 15
    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    invoke-virtual {v3}, Lcom/arcsoft/supernight/SuperNightProcess;->unInit()I

    const-string v3, "sendReprocessRequest:<SNP>: X"

    .line 16
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    return-void

    .line 19
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReprocessRequest:<CROP>: E "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v3

    .line 21
    iget-object v5, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v5

    .line 22
    iget-object v6, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-static {v1, v6, v4, v3, v5}, Lcom/android/camera2/SuperNightReprocessHandler;->convert(Landroid/graphics/Rect;IILandroid/graphics/Rect;F)Z

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReprocessRequest:<CROP>: X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    :try_start_0
    const-string v4, "sendReprocessRequest:<CAM>: E"

    .line 25
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v4, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 28
    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 29
    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSurfaceMgr()Lcom/android/camera2/MiCameraSurfaceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 30
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->generateReprocessCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCaptureStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const-string v0, "sendReprocessRequest:<CAM>: X"

    .line 32
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "sendReprocessRequest:<CAM>"

    .line 33
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    .line 35
    throw v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    const-string p0, "sendReprocessRequest:<CAM>: CANCELLED"

    .line 38
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    if-eqz v0, :cond_0

    const-string v0, "SNReprocessHandler"

    const-string v1, "cancelSuperNight: E"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    invoke-virtual {v1}, Lcom/arcsoft/supernight/SuperNightProcess;->cancelSuperNight()V

    const-string v1, "cancelSuperNight: X"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x13

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/MiCamera2ShotRawBurst;

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCamera2Shot:Lcom/android/camera2/MiCamera2ShotRawBurst;

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->sendReprocessRequest()V

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/Image;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->sendReprocessRequest()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepare(Lcom/android/camera2/MiCamera2ShotRawBurst;)V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueImage(Landroid/media/Image;)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
