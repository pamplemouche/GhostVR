.class public final synthetic LjL0;
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

    iput-object p1, p0, LjL0;->a:LpL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LjL0;->a:LpL0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1
    iget-object v1, v0, LpL0;->b:Lle1;

    sget-object v2, LsL0;->a:Lhe1;

    invoke-virtual {v1, v2}, Lle1;->a(Lce1;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, LpL0;->b:Lle1;

    sget-object v2, LsL0;->a:Lhe1;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lhe1;Z)V

    const-string v1, "PasswordManager.TouchToFill.DismissalReason"

    const/4 v2, 0x7

    .line 3
    invoke-static {v1, p1, v2}, LfV;->a(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 v1, 0x3

    const-string v2, "PasswordManager.TouchToFill.UserAction"

    .line 4
    invoke-static {v2, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    iget-object p1, v0, LpL0;->a:LhL0;

    invoke-interface {p1}, LhL0;->a()V

    :goto_0
    return-void
.end method
