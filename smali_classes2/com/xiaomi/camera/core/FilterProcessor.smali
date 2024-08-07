.class public Lcom/xiaomi/camera/core/FilterProcessor;
.super Ljava/lang/Object;
.source "FilterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FilterProcessor"


# instance fields
.field public mBlockVariable:Landroid/os/ConditionVariable;

.field public mRenderSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/ConditionVariable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mRenderSize:Landroid/util/Size;

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    return-void
.end method

.method public static getDrawYuvAttribute(Landroid/media/Image;ZLcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;
    .locals 26

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    .line 2
    new-instance v25, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvstyleFilterId()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v6

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOrientation()I

    move-result v7

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v8

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootRotation()F

    move-result v9

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 11
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v12

    .line 12
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v1

    const v2, 0x48454946

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v14, v1

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v17

    .line 16
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v18

    .line 17
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getDeviceWatermarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v19

    .line 18
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v20

    .line 19
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getMajorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v21

    .line 20
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getMinorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v22

    .line 21
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCaptureTime()J

    move-result-wide v23

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move/from16 v13, p1

    invoke-direct/range {v1 .. v24}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;-><init>(Landroid/media/Image;Landroid/util/Size;Landroid/util/Size;IIIIFJZZZLjava/lang/String;Ljava/lang/String;ZZLcom/android/camera/effect/renders/DeviceWatermarkParam;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;J)V

    return-object v25
.end method

.method private isAIWatermarkEnabled(Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getMajorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getMinorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isWatermarkEnabled(Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getVendorWaterMark()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareEffectProcessor(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mRenderSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->init(Landroid/util/Size;)V

    .line 5
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/FilterProcessor;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "prepareEffectProcessor: %x"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getInstance()Lcom/android/camera/effect/renders/SnapshotRenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getSnapshotRender()Lcom/android/camera/effect/renders/SnapshotRender;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/SnapshotRender;->prepareEffectRender(I)V

    return-void
.end method

.method private shouldApplyEffect(Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->isWatermarkEnabled(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->isAIWatermarkEnabled(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget p1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/android/camera/effect/FilterInfo;->CV_STYLE_FILTER_ID_0_NONE:I

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCvstyleFilterId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTiltShiftMode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isCinematicAspectRatio()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public doFilterSync(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;I)Landroid/media/Image;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->shouldApplyEffect(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/FilterProcessor;->prepareEffectProcessor(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    if-nez p3, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->isWatermarkEnabled(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-static {p2, p3, p1}, Lcom/xiaomi/camera/core/FilterProcessor;->getDrawYuvAttribute(Landroid/media/Image;ZLcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    move-result-object p3

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v1

    iput v1, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegQuality:I

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    .line 8
    sget-object v0, Lcom/xiaomi/camera/core/FilterProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFilterSync: outputSize > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;

    iget-object v1, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-direct {v0, p3, v1}, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;-><init>(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Landroid/os/ConditionVariable;)V

    .line 10
    sget-object v1, Lcom/xiaomi/camera/core/FilterProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply filter (id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to the captured photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 12
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getInstance()Lcom/android/camera/effect/renders/SnapshotRenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/SnapshotRenderManager;->getSnapshotRender()Lcom/android/camera/effect/renders/SnapshotRender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/SnapshotRender;->processImageSync(Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;)V

    .line 13
    iget-object p0, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 14
    sget-boolean p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-nez p0, :cond_2

    iget-object p0, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    if-eqz p0, :cond_2

    .line 15
    sget-boolean p0, Lcom/android/camera/Util;->WATER_MARK_DUMP:Z

    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object p0

    .line 17
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/xiaomi/camera/core/FilterProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump_water_mark doFilterSync: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", name = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", rect = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 20
    iget-object v0, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->saveBlobToFile([BLjava/lang/String;)V

    .line 21
    :cond_1
    iget-object p0, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setDataOfTheRegionUnderWatermarks([B)V

    .line 22
    iget-object p0, p3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCoordinatesOfTheRegionUnderWatermarks([I)V

    .line 23
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isDumpImageEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "filter_done"

    .line 24
    invoke-static {p2, p0}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    :cond_3
    return-object p2
.end method

.method public init(Landroid/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/FilterProcessor;->mRenderSize:Landroid/util/Size;

    return-void
.end method
