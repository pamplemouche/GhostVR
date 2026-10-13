.class public final synthetic LOt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOt0;->w:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LOt0;->w:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->a(Ljava/lang/Runnable;)V

    return-void
.end method
