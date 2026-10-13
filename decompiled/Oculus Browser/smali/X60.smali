.class public final LX60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LfS;


# instance fields
.field public final a:I

.field public final synthetic b:LY60;


# direct methods
.method public constructor <init>(LY60;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LX60;->b:LY60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, LX60;->a:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LX60;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, LmY;->a()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, LX60;->a:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, LX60;->b:LY60;

    .line 5
    invoke-virtual {v0}, LY60;->b()LC20;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, LX60;->b:LY60;

    .line 7
    invoke-virtual {v0}, LY60;->a()Lx20;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, LX60;->b:LY60;

    .line 9
    iget-object v0, v0, LY60;->o:LS60;

    if-eqz v0, :cond_4

    .line 10
    sget-object v0, Lay0;->a:Lcy0;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 11
    invoke-static {v0, v1}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 12
    throw v0
.end method
