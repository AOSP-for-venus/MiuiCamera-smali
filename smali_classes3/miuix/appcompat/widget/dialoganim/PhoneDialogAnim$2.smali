.class public Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field public final synthetic val$contentView:Landroid/view/View;

.field public final synthetic val$isLandscape:Z

.field public final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iput-boolean p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    iput-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    sub-int/2addr p5, p3

    add-int/lit8 v1, p5, 0x0

    .line 1
    invoke-static {p1, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-boolean v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    new-instance v4, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    iget-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    invoke-direct {v4, p2, p3, p4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V

    new-instance v5, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    .line 4
    invoke-static {p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    iget-boolean p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    invoke-direct {v5, p2, p3, p4, p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;Z)V

    const/4 v2, 0x0

    move-object v0, p1

    .line 5
    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    return-void
.end method
