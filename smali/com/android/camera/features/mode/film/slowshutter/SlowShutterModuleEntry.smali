.class public Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "SlowShutterModuleEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/entry/BaseModuleEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModuleEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModeUI;

    iget-object p0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/module/video/FilmSlowShutterModule;

    invoke-direct {p0}, Lcom/android/camera/module/video/FilmSlowShutterModule;-><init>()V

    return-object p0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModuleDevice;

    invoke-direct {p0}, Lcom/android/camera/features/mode/film/slowshutter/SlowShutterModuleDevice;-><init>()V

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xcf

    return p0
.end method

.method public support()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoOO()Z

    move-result p0

    return p0
.end method