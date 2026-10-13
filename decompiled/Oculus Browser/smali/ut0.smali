.class public Lut0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Lvt0;


# direct methods
.method public constructor <init>(Lvt0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lut0;->x:Lvt0;

    iput-object p2, p0, Lut0;->w:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lut0;->x:Lvt0;

    iget-object v0, v0, Lvt0;->w:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    iget-object v1, p0, Lut0;->w:Ljava/lang/String;

    .line 2
    invoke-static {v1}, LJ/N;->MN7bz_Mm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0101

    .line 3
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->a(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method
