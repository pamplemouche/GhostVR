.class public final synthetic LGd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LJd1;


# direct methods
.method public constructor <init>(LJd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGd1;->a:LJd1;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LGd1;->a:LJd1;

    .line 1
    iput-object p1, v0, LJd1;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, v0, LJd1;->f:Z

    .line 3
    invoke-virtual {v0}, LJd1;->a()V

    return-void
.end method
