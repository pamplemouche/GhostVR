.class public abstract LqL0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lke1;

.field public static final b:Lfe1;

.field public static final c:Lfe1;

.field public static final d:Lfe1;

.field public static final e:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lke1;

    const-string v1, "favicon"

    invoke-direct {v0, v1}, Lke1;-><init>(Ljava/lang/String;)V

    sput-object v0, LqL0;->a:Lke1;

    .line 2
    new-instance v0, Lfe1;

    const-string v1, "credential"

    invoke-direct {v0, v1}, Lfe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LqL0;->b:Lfe1;

    .line 3
    new-instance v0, Lfe1;

    const-string v1, "formatted_url"

    invoke-direct {v0, v1}, Lfe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LqL0;->c:Lfe1;

    .line 4
    new-instance v0, Lfe1;

    const-string v1, "on_click_listener"

    invoke-direct {v0, v1}, Lfe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LqL0;->d:Lfe1;

    const/4 v1, 0x4

    new-array v1, v1, [LUd1;

    .line 5
    sget-object v2, LqL0;->a:Lke1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, LqL0;->b:Lfe1;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, LqL0;->c:Lfe1;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, LqL0;->e:[LUd1;

    return-void
.end method
