.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$22;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$22;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$22;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$22;->instance:Ljava8/util/stream/Collectors$$Lambda$22;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$22;->instance:Ljava8/util/stream/Collectors$$Lambda$22;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava8/util/StringJoiner;

    invoke-virtual {p1}, Ljava8/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
