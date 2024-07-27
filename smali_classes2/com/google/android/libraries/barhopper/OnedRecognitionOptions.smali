.class public Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.1.0"


# instance fields
.field public codabarMinCodeLength:I

.field public codabarMinConsistentLines:I

.field public code128MinCodeLength:I

.field public code128MinConsistentLines:I

.field public code39MinCodeLength:I

.field public code39MinConsistentLines:I

.field public code39UseCheckDigit:Z

.field public code39UseExtendedMode:Z

.field public code93MinCodeLength:I

.field public code93MinConsistentLines:I

.field public ean13UpcaMinConsistentLines:I

.field public ean8MinConsistentLines:I

.field public itfMinCodeLength:I

.field public itfMinConsistentLines:I

.field public upceMinConsistentLines:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean13UpcaMinConsistentLines:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean8MinConsistentLines:I

    iput v1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->upceMinConsistentLines:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinConsistentLines:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinConsistentLines:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinConsistentLines:I

    iput v1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinConsistentLines:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinConsistentLines:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinCodeLength:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinCodeLength:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinCodeLength:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinCodeLength:I

    iput v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinCodeLength:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseCheckDigit:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseExtendedMode:Z

    return-void
.end method


# virtual methods
.method public getCodabarMinCodeLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinCodeLength:I

    return p0
.end method

.method public getCodabarMinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinConsistentLines:I

    return p0
.end method

.method public getCode128MinCodeLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinCodeLength:I

    return p0
.end method

.method public getCode128MinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinConsistentLines:I

    return p0
.end method

.method public getCode39MinCodeLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinCodeLength:I

    return p0
.end method

.method public getCode39MinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinConsistentLines:I

    return p0
.end method

.method public getCode39UseCheckDigit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseCheckDigit:Z

    return p0
.end method

.method public getCode39UseExtendedMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseExtendedMode:Z

    return p0
.end method

.method public getCode93MinCodeLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinCodeLength:I

    return p0
.end method

.method public getCode93MinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinConsistentLines:I

    return p0
.end method

.method public getEan13UpcaMinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean13UpcaMinConsistentLines:I

    return p0
.end method

.method public getEan8MinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean8MinConsistentLines:I

    return p0
.end method

.method public getItfMinCodeLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinCodeLength:I

    return p0
.end method

.method public getItfMinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinConsistentLines:I

    return p0
.end method

.method public getUpceMinConsistentLines()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->upceMinConsistentLines:I

    return p0
.end method

.method public setCodabarMinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinCodeLength:I

    return-object p0
.end method

.method public setCodabarMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->codabarMinConsistentLines:I

    return-object p0
.end method

.method public setCode128MinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinCodeLength:I

    return-object p0
.end method

.method public setCode128MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code128MinConsistentLines:I

    return-object p0
.end method

.method public setCode39MinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinCodeLength:I

    return-object p0
.end method

.method public setCode39MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39MinConsistentLines:I

    return-object p0
.end method

.method public setCode39UseCheckDigit(Z)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseCheckDigit:Z

    return-object p0
.end method

.method public setCode39UseExtendedMode(Z)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code39UseExtendedMode:Z

    return-object p0
.end method

.method public setCode93MinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinCodeLength:I

    return-object p0
.end method

.method public setCode93MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->code93MinConsistentLines:I

    return-object p0
.end method

.method public setEan13UpcaMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean13UpcaMinConsistentLines:I

    return-object p0
.end method

.method public setEan8MinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->ean8MinConsistentLines:I

    return-object p0
.end method

.method public setItfMinCodeLength(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinCodeLength:I

    return-object p0
.end method

.method public setItfMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->itfMinConsistentLines:I

    return-object p0
.end method

.method public setUpceMinConsistentLines(I)Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/barhopper/OnedRecognitionOptions;->upceMinConsistentLines:I

    return-object p0
.end method
