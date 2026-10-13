.class public abstract LNt0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lke1;

.field public static final b:Lje1;

.field public static final c:Lhe1;

.field public static final d:Lke1;

.field public static final e:Lke1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, LNt0;->a:Lke1;

    .line 4
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, LNt0;->b:Lje1;

    .line 5
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, LNt0;->c:Lhe1;

    .line 6
    new-instance v0, Lke1;

    .line 7
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 8
    sput-object v0, LNt0;->d:Lke1;

    .line 9
    new-instance v0, Lke1;

    .line 10
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 11
    sput-object v0, LNt0;->e:Lke1;

    return-void
.end method
