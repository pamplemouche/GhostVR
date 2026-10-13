.class public LHx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsc1;


# instance fields
.field public w:Lsc1;

.field public x:Z


# direct methods
.method public constructor <init>(Lsc1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LHx0;->w:Lsc1;

    return-void
.end method


# virtual methods
.method public a(I[Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LHx0;->x:Z

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LHx0;->x:Z

    .line 3
    :cond_1
    iget-object v0, p0, LHx0;->w:Lsc1;

    invoke-interface {v0, p1, p2}, Lsc1;->a(I[Landroid/net/Uri;)V

    return-void
.end method
