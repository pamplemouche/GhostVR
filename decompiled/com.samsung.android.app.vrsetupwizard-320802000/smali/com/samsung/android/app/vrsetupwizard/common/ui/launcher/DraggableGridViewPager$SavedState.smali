.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;
.super Landroid/view/View$BaseSavedState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/m;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/m;-><init>()V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;->a:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
