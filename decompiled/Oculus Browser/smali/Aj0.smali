.class public final synthetic LAj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEj0;


# static fields
.field public static final a:LEj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LAj0;

    invoke-direct {v0}, LAj0;-><init>()V

    sput-object v0, LAj0;->a:LEj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDj0;)V
    .locals 4

    .line 1
    check-cast p1, Lxj0;

    .line 2
    iget-object v0, p1, Lxj0;->w:Lnk0;

    if-nez v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-object v0, p1, Lxj0;->x:LGj0;

    invoke-virtual {v0}, LGj0;->g()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-object v0, p1, Lxj0;->x:LGj0;

    invoke-virtual {v0}, LGj0;->d()Lok;

    move-result-object v0

    invoke-virtual {v0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p1, Lxj0;->w:Lnk0;

    .line 7
    iput v2, v0, Lnk0;->j:I

    goto :goto_2

    .line 8
    :cond_4
    :goto_0
    iget-object v3, p1, Lxj0;->w:Lnk0;

    if-eq v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 9
    :goto_1
    iput-boolean v0, v3, Lnk0;->b:Z

    .line 10
    iget-object v0, p1, Lxj0;->w:Lnk0;

    .line 11
    iput v1, v0, Lnk0;->j:I

    .line 12
    :goto_2
    iget-object p1, p1, Lxj0;->w:Lnk0;

    invoke-virtual {p1}, Lnk0;->a()Lok0;

    move-result-object p1

    invoke-static {p1}, Lxk0;->a(Lok0;)V

    :goto_3
    return-void
.end method
