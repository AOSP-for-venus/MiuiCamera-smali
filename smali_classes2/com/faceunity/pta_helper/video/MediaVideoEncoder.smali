.class public Lcom/faceunity/pta_helper/video/MediaVideoEncoder;
.super Lcom/faceunity/pta_helper/video/MediaEncoder;
.source "MediaVideoEncoder.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static recognizedFormats:[I


# instance fields
.field public final b:I

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/faceunity/pta_helper/video/RenderHandler;

.field public i:Landroid/view/Surface;

.field public j:Lcom/faceunity/pta_helper/a/b;

.field public k:[I

.field public l:[I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f000789

    aput v2, v0, v1

    .line 2
    sput-object v0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->recognizedFormats:[I

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;II)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, p3

    move v8, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;-><init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;IIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;IIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_helper/video/MediaEncoder;-><init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V

    .line 3
    iput p3, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->b:I

    .line 4
    iput p4, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->c:I

    .line 5
    sget-object p1, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/faceunity/pta_helper/video/RenderHandler;->createHandler(Ljava/lang/String;)Lcom/faceunity/pta_helper/video/RenderHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->h:Lcom/faceunity/pta_helper/video/RenderHandler;

    .line 6
    iput p5, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->d:I

    .line 7
    iput p6, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->e:I

    .line 8
    iput p7, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->f:I

    .line 9
    iput p8, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->g:I

    return-void
.end method

.method public static final selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x0

    move v2, v0

    .line 4
    :goto_0
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 5
    aget v3, v3, v2

    .line 6
    sget-object v4, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->recognizedFormats:[I

    if-eqz v4, :cond_0

    array-length v4, v4

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 7
    sget-object v6, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->recognizedFormats:[I

    aget v6, v6, v5

    if-ne v6, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_3

    move v0, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    if-nez v0, :cond_5

    .line 8
    sget-object v1, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "couldn\'t find a good color format for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 10
    throw p0
.end method

.method public static final selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 5
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 6
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-static {v3, p0}, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public frameAvailableSoon(I[F[F)Z
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0xba2

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 3
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->l:[I

    aget v2, v2, v3

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    iget v2, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->d:I

    iget v5, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->e:I

    iget v6, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->f:I

    iget v7, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->g:I

    invoke-static {v2, v5, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 5
    invoke-static {v5, v5, v5, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 6
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 7
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    invoke-virtual {v2, p1, p2, p3}, Lcom/faceunity/pta_helper/a/b;->a(I[F[F)V

    .line 8
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 9
    aget p1, v1, v3

    const/4 p2, 0x1

    aget v2, v1, p2

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-static {p1, v2, v4, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 10
    iget p1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->m:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->m:I

    if-ge p1, v5, :cond_0

    return p2

    .line 11
    :cond_0
    iput-boolean p2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    .line 12
    iget-wide p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->h:Lcom/faceunity/pta_helper/video/RenderHandler;

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->k:[I

    aget p0, p0, v3

    sget-object p2, Lcom/faceunity/pta_helper/a/a/d;->b:[F

    invoke-virtual {p1, p0, p2, p3}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    :cond_2
    return v0
.end method

.method public prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    const-string v1, "video/avc"

    .line 3
    invoke-static {v1}, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    sget-object p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->a:Ljava/lang/String;

    const-string v0, "Unable to find an appropriate codec for video/avc"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget v2, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->b:I

    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->c:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const v3, 0x7f000789

    const-string v4, "color-format"

    .line 6
    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v3, 0x40c80000    # 6.25f

    .line 7
    iget v4, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->c:I

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 8
    sget-object v4, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    int-to-float v7, v3

    const/high16 v8, 0x44800000    # 1024.0f

    div-float/2addr v7, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v0, "bitrate=%5.2f[Mbps]"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bitrate"

    .line 9
    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x19

    const-string v3, "frame-rate"

    .line 10
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0xa

    const-string v3, "i-frame-interval"

    .line 11
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v1, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 14
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->i:Landroid/view/Surface;

    .line 15
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 16
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_1

    .line 17
    :try_start_0
    invoke-interface {v0, p0}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 18
    sget-object v0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->a:Ljava/lang/String;

    const-string v1, "prepare:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->i:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 3
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->i:Landroid/view/Surface;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->h:Lcom/faceunity/pta_helper/video/RenderHandler;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/video/RenderHandler;->release()V

    .line 6
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->h:Lcom/faceunity/pta_helper/video/RenderHandler;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->l:[I

    invoke-static {v0}, Lcom/faceunity/pta_helper/a/a/d;->b([I)V

    .line 8
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->k:[I

    invoke-static {v0}, Lcom/faceunity/pta_helper/a/a/d;->a([I)V

    .line 9
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/e;->c()V

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->m:I

    .line 12
    invoke-super {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->release()V

    return-void
.end method

.method public setEglContext(Landroid/opengl/EGLContext;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->k:[I

    new-array v2, v0, [I

    .line 2
    iput-object v2, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->l:[I

    .line 3
    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->b:I

    iget v4, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->c:I

    invoke-static {v1, v2, v3, v4}, Lcom/faceunity/pta_helper/a/a/d;->a([I[III)V

    .line 4
    new-instance v1, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v1}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    .line 5
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->h:Lcom/faceunity/pta_helper/video/RenderHandler;

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaVideoEncoder;->i:Landroid/view/Surface;

    invoke-virtual {v1, p1, p0, v0}, Lcom/faceunity/pta_helper/video/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    return-void
.end method
