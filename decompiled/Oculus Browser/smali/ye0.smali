.class public Lye0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/history/HistoryItemView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/history/HistoryItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lye0;->w:Lorg/chromium/chrome/browser/history/HistoryItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lye0;->w:Lorg/chromium/chrome/browser/history/HistoryItemView;

    .line 2
    iget-object v0, p1, LiR0;->A:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/history/HistoryItemView;->T:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p1, Lorg/chromium/chrome/browser/history/HistoryItemView;->T:Z

    .line 5
    check-cast v0, Lxe0;

    :cond_1
    :goto_0
    return-void
.end method
