.class Lcom/oculus/horizon/widget/CustomAlertDialog$Params;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public final adapter:Landroid/widget/ListAdapter;

.field public final items:[Ljava/lang/CharSequence;

.field public final message:Ljava/lang/CharSequence;

.field private final negativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field public final negativeText:Ljava/lang/CharSequence;

.field public final onClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field public final positiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field public final positiveText:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/ListAdapter;[Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->title:Ljava/lang/CharSequence;

    .line 58
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->view:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->message:Ljava/lang/CharSequence;

    .line 60
    iput-object p4, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->adapter:Landroid/widget/ListAdapter;

    .line 61
    iput-object p5, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->items:[Ljava/lang/CharSequence;

    .line 62
    iput-object p6, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->onClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 63
    iput-object p7, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->positiveText:Ljava/lang/CharSequence;

    .line 64
    iput-object p8, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->positiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 65
    iput-object p9, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->negativeText:Ljava/lang/CharSequence;

    .line 66
    iput-object p10, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->negativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/ListAdapter;[Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Lcom/oculus/horizon/widget/CustomAlertDialog$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p10}, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;-><init>(Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/ListAdapter;[Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/CustomAlertDialog$Params;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->negativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    return-object v0
.end method
