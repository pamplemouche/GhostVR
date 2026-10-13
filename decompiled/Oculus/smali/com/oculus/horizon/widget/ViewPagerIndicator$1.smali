.class Lcom/oculus/horizon/widget/ViewPagerIndicator$1;
.super Ljava/lang/Object;
.source "ViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/ViewPagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/ViewPagerIndicator;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;->this$0:Lcom/oculus/horizon/widget/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;->this$0:Lcom/oculus/horizon/widget/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->setCurrentItem(I)V

    .line 24
    return-void
.end method
