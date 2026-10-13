.class public final synthetic LaR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final w:Landroid/view/View$OnKeyListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LaR0;

    invoke-direct {v0}, LaR0;-><init>()V

    sput-object v0, LaR0;->w:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LeR0;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
