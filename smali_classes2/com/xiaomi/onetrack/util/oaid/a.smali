.class public Lcom/xiaomi/onetrack/util/oaid/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static volatile b:Lcom/xiaomi/onetrack/util/oaid/a;

.field public static d:J


# instance fields
.field public volatile c:Ljava/lang/String;

.field public final e:I

.field public volatile f:I

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->e:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/oaid/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/onetrack/util/oaid/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    return-object v0
.end method

.method private d()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    sget-wide v5, Lcom/xiaomi/onetrack/util/oaid/a;->d:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 4
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    if-ne v0, v2, :cond_1

    const-wide/16 v0, 0xbb8

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    return v2

    .line 5
    :cond_1
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    const-wide/16 v0, 0x2710

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    return v2

    .line 6
    :cond_2
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    if-ne v0, v1, :cond_3

    const-wide/32 v0, 0xea60

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    return v2

    .line 7
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get time\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sput-wide v3, Lcom/xiaomi/onetrack/util/oaid/a;->d:J

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-nez p0, :cond_0

    .line 12
    sget-object p0, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    const-string p1, "getOaid() throw exception : Don\'t use it on the main thread"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 13
    monitor-exit v0

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t use it on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/oaid/a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    const-string v1, "isNotAllowedGetOaid"

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 20
    :cond_3
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    .line 22
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 23
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 24
    :cond_4
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    if-nez v1, :cond_5

    .line 25
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, ""

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 27
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    .line 28
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 29
    monitor-exit v0

    return-object v1

    .line 30
    :cond_5
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/b;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, ""

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 32
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    .line 33
    iget v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 34
    monitor-exit v0

    return-object p1

    .line 35
    :cond_6
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 36
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 2

    .line 7
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    .line 8
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloseOaidDependMsaSDK\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method