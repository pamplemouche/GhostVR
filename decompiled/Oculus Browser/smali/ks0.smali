.class public abstract Lks0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lke1;

.field public static final b:Lke1;

.field public static final c:Lke1;

.field public static final d:Lke1;

.field public static final e:Lke1;

.field public static final f:[LUd1;

.field public static final g:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, Lks0;->a:Lke1;

    .line 4
    new-instance v0, Lke1;

    .line 5
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 6
    sput-object v0, Lks0;->b:Lke1;

    .line 7
    new-instance v0, Lke1;

    .line 8
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 9
    sput-object v0, Lks0;->c:Lke1;

    .line 10
    new-instance v0, Lke1;

    .line 11
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 12
    sput-object v0, Lks0;->d:Lke1;

    .line 13
    new-instance v0, Lke1;

    .line 14
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 15
    sput-object v0, Lks0;->e:Lke1;

    const/4 v2, 0x5

    new-array v2, v2, [LUd1;

    .line 16
    sget-object v3, Lks0;->a:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, Lks0;->b:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Lks0;->c:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    sget-object v3, Lks0;->d:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    aput-object v0, v2, v1

    sput-object v2, Lks0;->f:[LUd1;

    .line 17
    sget-object v0, Lsr0;->d:[LUd1;

    .line 18
    invoke-static {v2, v0}, Lle1;->a([LUd1;[LUd1;)[LUd1;

    move-result-object v0

    sput-object v0, Lks0;->g:[LUd1;

    return-void
.end method
