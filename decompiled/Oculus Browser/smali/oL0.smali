.class public final synthetic LoL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LpL0;


# direct methods
.method public constructor <init>(LpL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LoL0;->a:LpL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LoL0;->a:LpL0;

    check-cast p1, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    .line 1
    iget-object v1, v0, LpL0;->b:Lle1;

    sget-object v2, LsL0;->a:Lhe1;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lhe1;Z)V

    .line 2
    iget-object v1, v0, LpL0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3
    iget-object v1, v0, LpL0;->d:Ljava/util/List;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "PasswordManager.TouchToFill.CredentialIndex"

    .line 5
    invoke-static {v2, v1}, LfV;->b(Ljava/lang/String;I)V

    :cond_0
    const/4 v1, 0x3

    const-string v2, "PasswordManager.TouchToFill.UserAction"

    .line 6
    invoke-static {v2, v3, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 7
    iget-object v0, v0, LpL0;->a:LhL0;

    invoke-interface {v0, p1}, LhL0;->a(Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)V

    return-void
.end method
