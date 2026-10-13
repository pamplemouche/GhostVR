.class public LMk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEk0;


# instance fields
.field public final a:LEk0;

.field public b:Z


# direct methods
.method public constructor <init>(LEk0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LMk0;->a:LEk0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LMk0;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LMk0;->b:Z

    .line 3
    iget-object v0, p0, LMk0;->a:LEk0;

    invoke-interface {v0}, LEk0;->a()V

    return-void
.end method
