.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;
.super Ljava/lang/Object;
.source "OTABlockingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageInfo"
.end annotation


# instance fields
.field final appStoreIcon:Landroid/graphics/drawable/Drawable;

.field final googlePlayIcon:Landroid/graphics/drawable/Drawable;

.field final text:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;III)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->text:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->appStoreIcon:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->googlePlayIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;III)V

    return-void
.end method
