.class public LJV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LKV0;


# direct methods
.method public constructor <init>(LKV0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJV0;->w:LKV0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, LJV0;->w:LKV0;

    .line 2
    iget-object v1, v1, LKV0;->w:Ljava/util/Set;

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cr_BindingManager"

    const-string v2, "Release moderate connections: %d"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 5
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, LJV0;->w:LKV0;

    .line 7
    iget-object v0, v0, LKV0;->w:Ljava/util/Set;

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const-string v1, "Android.ModerateBindingCount"

    .line 9
    invoke-static {v1, v0}, LfV;->c(Ljava/lang/String;I)V

    .line 10
    :cond_0
    iget-object v0, p0, LJV0;->w:LKV0;

    invoke-static {v0}, LKV0;->a(LKV0;)V

    return-void
.end method
