.class Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;
.super Ljava/lang/Object;
.source "ReactViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/viewpager/ReactViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/views/viewpager/ReactViewPager;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/viewpager/ReactViewPager;Lcom/facebook/react/views/viewpager/ReactViewPager$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;-><init>(Lcom/facebook/react/views/viewpager/ReactViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported pageScrollState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    const-string v0, "idle"

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v1}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$100(Lcom/facebook/react/views/viewpager/ReactViewPager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/views/viewpager/PageScrollStateChangedEvent;

    iget-object v3, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {v3}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getId()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/facebook/react/views/viewpager/PageScrollStateChangedEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 147
    return-void

    .line 138
    :pswitch_1
    const-string v0, "dragging"

    goto :goto_0

    .line 141
    :pswitch_2
    const-string v0, "settling"

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$100(Lcom/facebook/react/views/viewpager/ReactViewPager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/views/viewpager/PageScrollEvent;

    iget-object v2, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {v2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/react/views/viewpager/PageScrollEvent;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 121
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$200(Lcom/facebook/react/views/viewpager/ReactViewPager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-static {v0}, Lcom/facebook/react/views/viewpager/ReactViewPager;->access$100(Lcom/facebook/react/views/viewpager/ReactViewPager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/views/viewpager/PageSelectedEvent;

    iget-object v2, p0, Lcom/facebook/react/views/viewpager/ReactViewPager$PageChangeListener;->this$0:Lcom/facebook/react/views/viewpager/ReactViewPager;

    invoke-virtual {v2}, Lcom/facebook/react/views/viewpager/ReactViewPager;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/react/views/viewpager/PageSelectedEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 128
    :cond_0
    return-void
.end method
