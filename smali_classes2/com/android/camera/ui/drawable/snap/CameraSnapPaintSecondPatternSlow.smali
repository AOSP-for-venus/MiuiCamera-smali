.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternSlow;
.super Lcom/android/camera/ui/drawable/snap/PaintPattern;
.source "CameraSnapPaintSecondPatternSlow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/ui/drawable/snap/PaintPattern<",
        "Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;-><init>(Lcom/android/camera/ui/drawable/CameraPaintBase;)V

    return-void
.end method


# virtual methods
.method public directlyResult()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelDst:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelDst:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    check-cast p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput p0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    return-void
.end method

.method public interceptDraw()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareTargetPattern()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelSrc:F

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelSrc:F

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthSrc:F

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthSrc:F

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthDst:F

    const/16 v0, 0x2e

    int-to-float v0, v0

    .line 6
    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/16 v2, 0xb

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v3, v2

    iput v3, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelDst:F

    .line 7
    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/16 v2, 0x4f

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelDst:F

    .line 8
    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    check-cast p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput p0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthDst:F

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result p0

    iput p0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    return-void
.end method
