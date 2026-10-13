.class public final Lxw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Lxw;

.field public static final c:Lxw;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxw;-><init>(I)V

    sput-object v0, Lxw;->b:Lxw;

    .line 2
    new-instance v0, Lxw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lxw;-><init>(I)V

    sput-object v0, Lxw;->c:Lxw;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lxw;->a:I

    return-void
.end method
