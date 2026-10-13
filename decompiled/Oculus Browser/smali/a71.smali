.class public final La71;
.super LT61;
.source "PG"


# static fields
.field public static final c:[Lk61;

.field public static final d:Lk61;


# instance fields
.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, La71;->c:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, La71;->d:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 2

    .line 1
    sget-object v0, La71;->d:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 2
    iget v0, p0, La71;->b:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    return-void
.end method
