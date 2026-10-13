.class public abstract Lsr0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhe1;

.field public static final b:Lje1;

.field public static final c:Lhe1;

.field public static final d:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, Lsr0;->a:Lhe1;

    .line 2
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, Lsr0;->b:Lje1;

    .line 3
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, Lsr0;->c:Lhe1;

    const/4 v1, 0x3

    new-array v1, v1, [LUd1;

    .line 4
    sget-object v2, Lsr0;->a:Lhe1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lsr0;->b:Lje1;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lsr0;->d:[LUd1;

    return-void
.end method
