.class public final synthetic Lcl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final w:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcl0;

    invoke-direct {v0}, Lcl0;-><init>()V

    sput-object v0, Lcl0;->w:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(Landroid/view/View;)V

    return-void
.end method
