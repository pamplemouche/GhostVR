.class public LBF;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:LBF;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    new-instance v0, LBF;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LBF;-><init>(Z)V

    sput-object v0, LBF;->b:LBF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LBF;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(LBF;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, LBF;->b:LBF;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LBF;->a:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, LBF;->a:Ljava/util/Map;

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LBF;->a:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LBF;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()LBF;
    .locals 1

    .line 1
    sget-object v0, LzF;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "getEmptyRegistry"

    .line 2
    invoke-static {v0}, LzF;->a(Ljava/lang/String;)LBF;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    :cond_0
    sget-object v0, LBF;->b:LBF;

    :goto_0
    return-object v0
.end method

.method public static b()LBF;
    .locals 1

    .line 1
    sget-object v0, LzF;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "newInstance"

    .line 2
    invoke-static {v0}, LzF;->a(Ljava/lang/String;)LBF;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    :cond_0
    new-instance v0, LBF;

    invoke-direct {v0}, LBF;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(LOF;)V
    .locals 4

    .line 4
    iget-object v0, p0, LBF;->a:Ljava/util/Map;

    new-instance v1, LAF;

    .line 5
    iget-object v2, p1, LOF;->a:LhG;

    .line 6
    iget-object v3, p1, LOF;->d:LNF;

    .line 7
    iget v3, v3, LNF;->x:I

    .line 8
    invoke-direct {v1, v2, v3}, LAF;-><init>(Ljava/lang/Object;I)V

    .line 9
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
