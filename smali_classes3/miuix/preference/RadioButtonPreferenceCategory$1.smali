.class public Lmiuix/preference/RadioButtonPreferenceCategory$1;
.super Ljava/lang/Object;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 3
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$300(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method public onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    .line 2
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {v2, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-interface {v1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    .line 5
    :cond_0
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
