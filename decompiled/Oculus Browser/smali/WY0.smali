.class public LWY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNX0;


# instance fields
.field public final a:LL01;

.field public final b:LZX0;

.field public c:LYY0;

.field public d:LQY0;

.field public e:LUY0;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(LL01;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LWY0;->a:LL01;

    .line 3
    new-instance p1, LZX0;

    invoke-direct {p1}, LZX0;-><init>()V

    .line 4
    iput-object p1, p0, LWY0;->b:LZX0;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, LWY0;->g:Z

    return-void
.end method
