.class public final enum Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;
.super Ljava/lang/Enum;
.source "DocumentProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

.field public static final enum FEAT_DEMOIRE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

.field public static final enum FEAT_DET:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

.field public static final enum FEAT_DEWARP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

.field public static final enum FEAT_ENHANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

.field public static final enum FEAT_FINGER:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    const/4 v1, 0x0

    const-string v2, "FEAT_DET"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_DET:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    .line 2
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    const/4 v2, 0x1

    const-string v3, "FEAT_ENHANCE"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_ENHANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    .line 3
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    const/4 v3, 0x2

    const-string v4, "FEAT_DEWARP"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_DEWARP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    .line 4
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    const/4 v4, 0x3

    const-string v5, "FEAT_DEMOIRE"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_DEMOIRE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    .line 5
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    const/4 v5, 0x4

    const-string v6, "FEAT_FINGER"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_FINGER:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    .line 6
    sget-object v7, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_DET:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_ENHANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_DEWARP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->FEAT_DEMOIRE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    invoke-virtual {v0}, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    return-object v0
.end method
