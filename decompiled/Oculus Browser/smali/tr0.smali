.class public abstract Ltr0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhe1;

.field public static final b:Lke1;

.field public static final c:Lke1;

.field public static final d:Lhe1;

.field public static final e:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, Ltr0;->a:Lhe1;

    .line 2
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 4
    sput-object v0, Ltr0;->b:Lke1;

    .line 5
    new-instance v0, Lke1;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lke1;-><init>(Z)V

    sput-object v0, Ltr0;->c:Lke1;

    .line 6
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, Ltr0;->d:Lhe1;

    const/4 v3, 0x4

    new-array v3, v3, [LUd1;

    .line 7
    sget-object v4, Ltr0;->a:Lhe1;

    aput-object v4, v3, v1

    sget-object v1, Ltr0;->b:Lke1;

    aput-object v1, v3, v2

    const/4 v1, 0x2

    sget-object v2, Ltr0;->c:Lke1;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object v0, v3, v1

    sput-object v3, Ltr0;->e:[LUd1;

    return-void
.end method
