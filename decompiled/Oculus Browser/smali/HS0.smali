.class public final LHS0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public b:Landroid/os/Bundle;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:LMS0;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LHS0;->a:I

    return-void
.end method


# virtual methods
.method public a()LOS0;
    .locals 2

    .line 1
    new-instance v0, LOS0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LOS0;-><init>(LHS0;LGS0;)V

    return-object v0
.end method
