.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;
.super Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;
.source "MimojiBgItem.java"


# instance fields
.field public mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

.field public mBgId:I

.field public mDescId:I

.field public mFrame:I

.field public mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public mIsApply:Z

.field public mIsSelected:Z

.field public mLastRefreshTime:J

.field public mResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsApply:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;III)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsApply:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    .line 21
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 22
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mResourceId:I

    .line 23
    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mDescId:I

    .line 24
    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBgId:I

    .line 25
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/BackgroundInfo;III)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsApply:Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    .line 13
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    .line 14
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mResourceId:I

    .line 15
    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mDescId:I

    .line 16
    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBgId:I

    .line 17
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsApply:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsSelected:Z

    const p1, 0x7f12047d

    .line 9
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mDescId:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setBackgroundInfo(Lcom/arcsoft/avatar2/BackgroundInfo;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setFuItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setResourceId(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setBgId(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setBgId(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->isApply()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setIsApply(Z)V

    const/4 p0, 0x0

    .line 9
    iput p0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->clone()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    return-object p0
.end method

.method public getBgId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBgId:I

    return p0
.end method

.method public getDescId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mDescId:I

    return p0
.end method

.method public getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-object p0
.end method

.method public getIsNeedRefresh()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-wide v4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mLastRefreshTime:J

    sub-long v4, v0, v4

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getDelayMillis()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 4
    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mLastRefreshTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public getRefreshTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mLastRefreshTime:J

    return-wide v0
.end method

.method public getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mResourceId:I

    return p0
.end method

.method public isApply()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsApply:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsSelected:Z

    return p0
.end method

.method public nextFrame()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFrame:I

    :goto_0
    return v0
.end method

.method public setBackgroundInfo(Lcom/arcsoft/avatar2/BackgroundInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    return-void
.end method

.method public setBgId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBgId:I

    return-void
.end method

.method public setDescId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mDescId:I

    return-void
.end method

.method public setFuItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-void
.end method

.method public setIsApply(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsApply:Z

    return-void
.end method

.method public setRefreshTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mLastRefreshTime:J

    return-void
.end method

.method public setResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mResourceId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MimojiBgInfo{mBackgroundInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFuItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mIsSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->mBgId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
