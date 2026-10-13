.class public abstract LKr0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lke1;

.field public static final b:Lke1;

.field public static final c:Lke1;

.field public static final d:[LUd1;

.field public static final e:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, LKr0;->a:Lke1;

    .line 4
    new-instance v0, Lke1;

    .line 5
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 6
    sput-object v0, LKr0;->b:Lke1;

    .line 7
    new-instance v0, Lke1;

    .line 8
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 9
    sput-object v0, LKr0;->c:Lke1;

    const/4 v2, 0x3

    new-array v2, v2, [LUd1;

    .line 10
    sget-object v3, LKr0;->a:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, LKr0;->b:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, LKr0;->d:[LUd1;

    .line 11
    sget-object v0, Lsr0;->d:[LUd1;

    .line 12
    invoke-static {v2, v0}, Lle1;->a([LUd1;[LUd1;)[LUd1;

    move-result-object v0

    sput-object v0, LKr0;->e:[LUd1;

    return-void
.end method
