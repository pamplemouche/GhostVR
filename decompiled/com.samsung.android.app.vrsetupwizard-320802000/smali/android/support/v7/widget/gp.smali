.class final Landroid/support/v7/widget/gp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v7/widget/SeslCheckedTextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/widget/SeslCheckedTextView$SavedState;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/v7/widget/go;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/widget/SeslCheckedTextView$SavedState;
    .locals 0

    new-array p1, p1, [Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gp;->a(Landroid/os/Parcel;)Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gp;->a(I)[Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    move-result-object p1

    return-object p1
.end method
