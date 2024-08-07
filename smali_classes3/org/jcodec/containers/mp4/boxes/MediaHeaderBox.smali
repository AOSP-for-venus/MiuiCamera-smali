.class public Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "MediaHeaderBox.java"


# instance fields
.field public created:J

.field public duration:J

.field public language:I

.field public modified:J

.field public quality:I

.field public timescale:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMediaHeaderBox(IJIJJI)Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput p0, v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->timescale:I

    .line 3
    iput-wide p1, v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->duration:J

    .line 4
    iput p3, v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->language:I

    .line 5
    iput-wide p4, v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->created:J

    .line 6
    iput-wide p6, v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->modified:J

    .line 7
    iput p8, v0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->quality:I

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "mdhd"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->created:J

    invoke-static {v0, v1}, Lorg/jcodec/containers/mp4/TimeUtil;->toMovTime(J)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->modified:J

    invoke-static {v0, v1}, Lorg/jcodec/containers/mp4/TimeUtil;->toMovTime(J)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->timescale:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->duration:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->language:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 7
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->quality:I

    int-to-short p0, p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getCreated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->created:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->duration:J

    return-wide v0
.end method

.method public getLanguage()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->language:I

    return p0
.end method

.method public getModified()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->modified:J

    return-wide v0
.end method

.method public getQuality()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->quality:I

    return p0
.end method

.method public getTimescale()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->timescale:I

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->created:J

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->modified:J

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->timescale:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->duration:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->created:J

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/jcodec/containers/mp4/TimeUtil;->fromMovTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->modified:J

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->timescale:I

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->duration:J

    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported version"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->duration:J

    return-void
.end method

.method public setTimescale(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->timescale:I

    return-void
.end method
