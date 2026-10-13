.class public final synthetic LCt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCt0;->a:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LCt0;->a:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1
    iget-wide v1, v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->c:Ljava/lang/String;

    .line 3
    invoke-static {v1, v2, v0, p1}, LJ/N;->M1W3B6UT(JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, v2, v0}, LJ/N;->Ml5BeqqW(JLjava/lang/Object;)V

    .line 5
    :goto_0
    iget-object p1, v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->b:LDt0;

    const/4 v0, 0x3

    .line 6
    iget-object v1, p1, LDt0;->a:LBd1;

    iget-object p1, p1, LDt0;->d:Lle1;

    invoke-virtual {v1, p1, v0}, LBd1;->a(Lle1;I)V

    :goto_1
    return-void
.end method
