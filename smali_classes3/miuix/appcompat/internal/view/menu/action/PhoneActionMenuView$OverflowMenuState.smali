.class public final enum Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
.super Ljava/lang/Enum;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverflowMenuState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field public static final enum Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field public static final enum Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field public static final enum Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field public static final enum Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v1, 0x0

    const-string v2, "Collapsed"

    invoke-direct {v0, v2, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 2
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v2, 0x1

    const-string v3, "Expanding"

    invoke-direct {v0, v3, v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 3
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v3, 0x2

    const-string v4, "Expanded"

    invoke-direct {v0, v4, v3}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v4, 0x3

    const-string v5, "Collapsing"

    invoke-direct {v0, v5, v4}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v5, 0x4

    new-array v5, v5, [Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 5
    sget-object v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    aput-object v6, v5, v1

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    aput-object v1, v5, v2

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->$VALUES:[Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

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

.method public static valueOf(Ljava/lang/String;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .locals 1

    .line 1
    const-class v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method

.method public static values()[Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->$VALUES:[Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    invoke-virtual {v0}, [Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    return-object v0
.end method
