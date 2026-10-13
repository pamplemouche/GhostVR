.class public Lvk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lwk0;


# direct methods
.method public constructor <init>(Lwk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvk0;->w:Lwk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvk0;->w:Lwk0;

    iget-object v1, v0, Lwk0;->d:Lok0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lwk0;->a(Lok0;)V

    .line 3
    iget-object v0, p0, Lvk0;->w:Lwk0;

    iput-object v2, v0, Lwk0;->d:Lok0;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v2, v0, Lwk0;->c:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
