.class public LPw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LXw0;


# direct methods
.method public constructor <init>(LXw0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LPw0;->b:LXw0;

    iput p2, p0, LPw0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LZw0;

    .line 2
    iget-object v0, p0, LPw0;->b:LXw0;

    iget v1, p0, LPw0;->a:I

    invoke-virtual {v0, v1, p1}, LXw0;->a(ILZw0;)V

    .line 3
    iget-object p1, p0, LPw0;->b:LXw0;

    .line 4
    invoke-virtual {p1}, LXw0;->f()V

    return-void
.end method
